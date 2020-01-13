package com.situ.sephora.product.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.situ.sephora.product.dao.ProductDao;
import com.situ.sephora.product.domain.Product;
import com.situ.sephora.product.service.ProductService;
import com.situ.sephora.utils.ConfigUtils;
import com.situ.sephora.utils.PageUtils;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productdao;

	/**
	 * 保存商品
	 */
	@Override
	public Long save(Product product, String realPath) {
		if (product.getImgFile().getSize() >0) {//如果传入的图片大小大于1
			String filePath = this.testUpload(product, realPath);
			product.setImgPath(filePath);
		}
		product.setActiveFlag(1);
		product.setCreateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		product.setCreateDate(new Date());
		return this.productdao.save(product);
	}

	/**
	 * 根据product查询一个
	 */
	@Override
	public Product getByProduct(Product product) {
		if (product != null) {
			product = PageUtils.buildSearchParam(product);
			return this.productdao.getByProduct(product);
		}
		return null;
	}

	/**
	 * 根据rowId查询一个
	 */
	@Override
	public Product getByRowId(Long rowId) {
		return this.productdao.getByRowId(rowId);
	}
	
	/**
	 * 根据product查找全部
	 */
	@Override
	public List<Product> find(Product product) {
		product = PageUtils.buildSearchParam(product);
		return this.productdao.find(product);
	}
	
	/**
	 * 更新
	 */
	@Override
	public Integer update(Product product, String realPath) {
		if (product.getImgFile().getSize() > 0) {
			String filePath = this.testUpload(product, realPath);
			product.setImgPath(filePath);
		}
		product.setUpdateBy(ConfigUtils.SESSION_ADMIN_LOGIN);
		product.setUpdateDate(new Date());
		product = PageUtils.buildSearchParam(product);
		this.productdao.update(product);
		return 1;
	}

	/**
	 * 删除
	 */
	@Override
	public Integer del(Long rowId) {
		this.productdao.del(rowId);
		return 1;
	}

	//查询已有商品的分类
	@Override
	public List<Product> findCategory() {
		List<Product> products = this.productdao.find(null);
		List<Product> category = null;
		if (products.size() > 1) {//products不为空
			boolean flag;
			category = new ArrayList<Product>();
			category.add(products.get(0));//向category添加一个商品
			for (Product product : products) {//遍历products
				flag = true;
				for (int i = 0; i < category.size(); i++) {//遍历category
					//如果两者的id相等代表对象重复需要剔除
					if (category.get(i).getCategoryId() == product.getCategoryId()) {
						flag = false;
						break;
					}
				}
				//当不重复时添加进数组
				if (flag) {
					category.add(product);
				}
			}
		}
		return category;
	}

	/**
	 * 文件上传
	 * @param product
	 * @param realPath
	 * @return 相对路径
	 */
	private String testUpload(Product product, String realPath) {
		// System.out.println(product.getProductName());
		// System.out.println(product.getImgFile());
		CommonsMultipartFile userFile = product.getImgFile();
		// String name = userFile.getName();
		// System.out.println("上传的文件的ParamName=" + name);
		String originalFilename = userFile.getOriginalFilename();
		// System.out.println("上传的文件名称=" + originalFilename);
		// Long size = userFile.getSize();
		// System.out.println("上传文件的大小=" + size);
		// 文件的后缀
		String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
		// 写出的文件地址#此路径应该写到数据库中
		File file = new File(realPath+ConfigUtils.FILE_FOLDER);
		if (!file.isDirectory()) {
			file.mkdirs();
		}
		String filePath = ConfigUtils.FILE_FOLDER + Calendar.getInstance().getTimeInMillis() + suffix;
		// 要写出的文件
		File toFile = new File(realPath + filePath);
		try {
			// 通过 transferTo 直接将文件写出
			userFile.transferTo(toFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		/*
		 * try { InputStream inputStream = userFile.getInputStream(); } catch
		 * (IOException e) { e.printStackTrace(); }
		 */
		return filePath;
	}

}
