package com.situ.sephora.utils;


import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.situ.sephora.base.domain.PageData;


/**
 * @Page 工具类
 */
public class PageUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	// 默认的每页显示的条数
	public static final int PAGE_ROWS = 3;
	// get方法名称的正则表达式
	public static final String REGEX_GET = "^get\\S+$";
	// get方法的前缀
	public static final String GET = "get";
	// set方法的前缀
	public static final String SET = "set";

	private PageUtils() {
	}

	/**
	 * @ 通过反射机制将类的实例中的""重新赋值为null,方便MyBatis中多条件查询SQL语句的书写
	 * 
	 * @param <T>
	 * @param t
	 * @return 
	 */
	public static <T> T buildSearchParam(T t) {
		if (t != null) {
			// 得到此对象的Class对象
			Class<?> clazz = t.getClass();
			// 根据Class对象得到类的所有的方法名称
			Method[] methods = clazz.getMethods();
			// Map<方法名称，方法的实例>
			Map<String, Method> methodMap = new HashMap<String, Method>();
			for (Method method : methods) {
				String methodName = method.getName();
				methodMap.put(methodName, method);
			}
			for (String methodName : methodMap.keySet()) {
				// 如果这个方法名称是以get开头
				if (methodName.matches(REGEX_GET)) {
					Method method = methodMap.get(methodName);
					try {
						Object objValue = method.invoke(t);
						if (objValue != null && "".equals(objValue)) {
							// 得到此属性的对应的set方法名称
							String setMethodName = methodName.replace(GET, SET);
							// 根据Sett方法名称从Map中找到这个方法。
							Method methodSet = methodMap.get(setMethodName);
							// 运行这个Set方法，对这个属性重新进行赋值，将这个属性赋值成 null
							methodSet.invoke(t, new Object[] { null });
						}
					} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return t;
	}

	/**
	 * @编译生成分页数据
	 * @param dataCount 数据总量
	 * @param pageNo    分页页号
	 * @return
	 */
	public static PageData buildPageData(Integer dataCount, Integer pageNo) {
		// countIndex = 61
		// 计算出可以分的总页数
		Integer pageCount = dataCount % PAGE_ROWS == 0 ? dataCount / PAGE_ROWS : dataCount / PAGE_ROWS + 1;

		Integer beginIndex = (pageNo - 1) * PAGE_ROWS + 1;// 开始的记录
		Integer endIndex = beginIndex + PAGE_ROWS - 1;/// 结束的记录
		if (endIndex > dataCount) {
			endIndex = dataCount;
		}
		List<Integer> pageList = new ArrayList<Integer>();// 分页集合
		for (int i = 1; i <= pageCount; i++) {
			pageList.add(i);
		}
		return new PageData(beginIndex, endIndex, dataCount, pageNo, pageCount, pageList);
	}
}
