package com.situ.sephora.url.controller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.situ.sephora.address.service.AddressService;
import com.situ.sephora.category.service.CategoryService;
import com.situ.sephora.order.service.OrderService;
import com.situ.sephora.orderlist.domain.OrderList;
import com.situ.sephora.orderlist.service.OrderListService;
import com.situ.sephora.product.domain.Product;
import com.situ.sephora.product.service.ProductService;
import com.situ.sephora.user.domain.User;
import com.situ.sephora.user.service.UserService;
import com.situ.sephora.utils.ContextUtils;

@Controller
public class UrlController implements Serializable {
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderListService orderListServie;
	@Autowired
	private AddressService addressService;

	//头部
	private final String PAGE_HEAD = "shop/head";
	// 主页
	private final String PAGE_INDEX = "shop/index";
	// 列表页
	private final String PAGE_LIST = "shop/list";
	// 详情页
	private final String PAGE_DETAILS = "shop/details";
	// 购物车页
	private final String PAGE_SHOPPING_CART = "shop/shoppingCart";
	// 购物流程
	private final String PAGE_SHOPPING_PROCESS = "shop/shoppingProcess";
	// 登录
	private final String PAGE_LOGIN = "shop/login";
	// 注册
	private final String PAGE_REGISTERED = "shop/registered";
	// 个人中心
	private final String PAGE_PERSONAL_CENTER = "shop/personalCenter";
	// 修改个人信息
	private final String PAGE_PERSONAL_DATA = "shop/personalData";
	// 地址
	private final String PAGE_ADDRESS = "shop/adress";
	// 我的订单
	private final String PAGE_MY_ORDER = "shop/myOrder";

	// 后台登录页
	private final String PAGE_ADMIN_LOGIN = "admin/login";
	// 后台登录页
	private final String PAGE_ADMIN_INDEX = "admin/index";
	// 用户列表
	private final String PAGE_ADMIN_USER_LIST = "admin/userList";
	// 用户添加编辑
	private final String PAGE_ADMIN_USER_ADD_EDIT = "admin/userAddEdit";
	// 商品目录
	private final String PAGE_ADMIN_CATEGORY = "admin/category";
	//商品列表
	private final String PAGE_ADMIN_PRODUCT_LIST = "admin/productList";
	//订单
	private final String PAGE_ADMIN_ORDER = "admin/order";
	//订单列表
	private final String PAGE_ADMIN_ORDER_LIST="admin/orderList";
	
	@RequestMapping("/findCategoryChild")
	public ModelAndView findCategoryChild(ModelAndView modelAndView) {
		modelAndView.addObject("category",this.categoryService.findChild());
		modelAndView.setViewName(PAGE_HEAD);
		return modelAndView;
	}
	
	@RequestMapping(path = { "/", "/index" })
	public ModelAndView goIndex(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_INDEX);
		return modelAndView;
	}

	@RequestMapping("/list")
	public ModelAndView list(ModelAndView modelAndView) {
		modelAndView.addObject("productList",this.productService.find(null));
		modelAndView.setViewName(PAGE_LIST);
		return modelAndView;
	}

	@RequestMapping("/details/{rowId}")
	public ModelAndView details(@PathVariable Long rowId, ModelAndView modelAndView) {
		modelAndView.addObject("product",this.productService.getByRowId(rowId));
		modelAndView.setViewName(PAGE_DETAILS);
		return modelAndView;
	}

	@RequestMapping("/shoppingCart")
	public ModelAndView shoppingCart(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_SHOPPING_CART);
		return modelAndView;
	}

	@RequestMapping("/shoppingProcess")
	public ModelAndView shoppingProcess(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_SHOPPING_PROCESS);
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView login(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_LOGIN);
		return modelAndView;
	}
	
	@RequestMapping("/exitUser")
	public ModelAndView exitUser(ModelAndView modelAndView,HttpServletRequest request) {
		request.getSession().setAttribute("user", "");
		modelAndView.setViewName(PAGE_INDEX);
		return modelAndView;
	}
	
	@RequestMapping("/registered")
	public ModelAndView registered(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_REGISTERED);
		return modelAndView;
	}

	@RequestMapping("/personalCenter")
	public ModelAndView personalCenter(ModelAndView modelAndView,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		if (user!=null) {
			modelAndView.setViewName(PAGE_PERSONAL_CENTER);
		}else {
			modelAndView.setViewName(PAGE_LOGIN);
		}
		
		return modelAndView;
	}

	@RequestMapping("/personalData")
	public ModelAndView personalData(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_PERSONAL_DATA);
		return modelAndView;
	}

	@RequestMapping("/address")
	public ModelAndView address(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_ADDRESS);
		return modelAndView;
	}

	@RequestMapping("/myOrder")
	public ModelAndView myOrder(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_MY_ORDER);
		return modelAndView;
	}

	@RequestMapping(path = { "/admin", "/admin/login" })
	public ModelAndView adminLogin(ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_ADMIN_LOGIN);
		return modelAndView;
	}

	@RequestMapping("admin/index")
	public ModelAndView adminIndex(ModelAndView modelAndView) {
		User user= ContextUtils.getLoginUser();
		if (user!=null) {
			modelAndView.setViewName(PAGE_ADMIN_INDEX);
		}else {
			modelAndView.setViewName(PAGE_ADMIN_LOGIN);
		}
		return modelAndView;
	}

	@RequestMapping("admin/selectUser")
	public ModelAndView selectUser(User user, ModelAndView modelAndView) {
		modelAndView.addObject("userList", userService.find(user));
		modelAndView.setViewName(PAGE_ADMIN_USER_LIST);
		return modelAndView;
	}
	
	@RequestMapping("admin/userList")
	public ModelAndView userList(User user, ModelAndView modelAndView) {
		modelAndView.addObject("userList", userService.find(user));
		modelAndView.setViewName(PAGE_ADMIN_USER_LIST);
		return modelAndView;
	}

	@RequestMapping("admin/goUpdateUser")
	public ModelAndView updateUser(User user, ModelAndView modelAndView) {
		modelAndView.addObject("userInfo",userService.getByUser(user) );
		modelAndView.setViewName(PAGE_ADMIN_USER_ADD_EDIT);
		return modelAndView;
	}
	
	@RequestMapping("admin/goAddUser")
	public ModelAndView addUser( ModelAndView modelAndView) {
		modelAndView.setViewName(PAGE_ADMIN_USER_ADD_EDIT);
		return modelAndView;
	}
	
	@RequestMapping("admin/goCategory")
	public ModelAndView category( ModelAndView modelAndView) {
		modelAndView.addObject("category",this.categoryService.find(null));
		modelAndView.setViewName(PAGE_ADMIN_CATEGORY);
		return modelAndView;
	}
	
	@RequestMapping("admin/goProductList")
	public ModelAndView productList(ModelAndView modelAndView) {
		modelAndView.addObject("product",this.productService.find(null));
		modelAndView.addObject("category",this.productService.findCategory());
		modelAndView.setViewName(PAGE_ADMIN_PRODUCT_LIST);
		return modelAndView;
	}
	
	@RequestMapping("admin/selectProduct")
	public ModelAndView selectProduct(Product product,ModelAndView modelAndView) {
		modelAndView.addObject("product",this.productService.find(product));
		modelAndView.addObject("category",this.productService.findCategory());
		modelAndView.addObject("categoryList",this.categoryService.find(null));
		modelAndView.setViewName(PAGE_ADMIN_PRODUCT_LIST);
		return modelAndView;
	}
	
	@RequestMapping("admin/goOrder")
	public ModelAndView order(ModelAndView modelAndView) {
		modelAndView.addObject("order",this.orderService.findByOrder(null));
		modelAndView.addObject("address",this.addressService.findByAddress(null));
		modelAndView.setViewName(PAGE_ADMIN_ORDER);
		return modelAndView;
	}
	
	@RequestMapping("admin/goOrderList")
	public ModelAndView orderList(OrderList orderList, ModelAndView modelAndView) {
		modelAndView.addObject("orderList",this.orderListServie.find(orderList));
		modelAndView.setViewName(PAGE_ADMIN_ORDER_LIST);
		return modelAndView;
	}
}
