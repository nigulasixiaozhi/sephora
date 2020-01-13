package com.situ.sephora.product.controller;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.sephora.product.domain.Product;
import com.situ.sephora.product.service.ProductService;
import com.situ.sephora.utils.ConfigUtils;

@Controller
@RequestMapping("/admin")
public class ProductController implements Serializable {
	private static final long serialVersionUID = 1L;
	@Autowired
	private ProductService productService;

	/**
	 * 打开商品更新
	 * @param product
	 * @return 商品类
	 */
	
	@ResponseBody
	@RequestMapping("/goUpdateProduct")
	public Product goUpdateProduct(Product product) {
		return this.productService.getByProduct(product);
	}
	
	
	/**
	 * 执行添加商品
	 * @param product
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doSaveProduct")
	public Long saveProduct(Product product) {
		// 文件的存放路径
		String realPath =ConfigUtils.FILE_BASE_PATH;
		return this.productService.save(product, realPath);
	}

	/**
	 * 执行更新商品
	 * @param product
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doUpdateProduct")
	public Integer doUpdateProduct(Product product) {
		// 文件的存放路径
		String realPath =ConfigUtils.FILE_BASE_PATH;
		//System.out.println(realPath);
		return this.productService.update(product, realPath);
	}

	/**
	 * 执行删除
	 * @param rowId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doDelProduct")
	public Integer delProduct(Long rowId) {
		return this.productService.del(rowId);
	}

}
