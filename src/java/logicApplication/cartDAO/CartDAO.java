/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logicApplication.cartDAO;

import java.util.List;
import model.cart.Cart;
import model.itemBook.ItemBook;

/**
 *
 * @author pc
 */
public interface CartDAO {
    Cart createCart();
    Cart getCartById(int id);
    boolean addItemBookToCart(ItemBook itemBook, Cart cart);
    boolean removeItemBookFromCart(ItemBook itemBook, Cart cart);
    List<ItemBook> getItemBookOfCart(Cart cart);
}
