/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logicApplication.orderDAO;

import model.order.Order;

/**
 *
 * @author pc
 */
public interface OrderDAO {
    Order addOrder(Order order);
}
