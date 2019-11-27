package service;

import java.util.List;

import model.Product;

public interface ProductService {
	void create(Product p);

	void update(Product p);
        
         void updateProductQuantity(int id, int newQuantity);

	void delete(int id);
	
	Product get(int id);
	
	List<Product> search(String name);
	
	List<Product> seachByCategory(int cate_id);
}
