package dao;

import java.util.List;

import model.Cart;

public interface CartDao {
	void insert(Cart cart);

	void edit(Cart cart);

	void delete(int id);

	Cart get(int id);

        List<Cart> getByPersonId(int id);
        
	List<Cart> getAll();
        
        void updateStatusCart(int cartID,String statusName);

}
