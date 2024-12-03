// Function to update cart items from localStorage
function updateCart() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartList = document.getElementById('cart-list');
    const totalPrice = document.getElementById('total-price');
  
    // Clear current cart items before updating
    cartList.innerHTML = '';
  
    let total = 0;
  
    // Loop through each item in the cart and display it
    cart.forEach((item, index) => {
      const row = document.createElement('tr');
      row.innerHTML = `
        <td>${item.name}</td>
        <td>$${item.price}</td>
        <td>
          <button class="btn btn-secondary" onclick="updateQuantity(${index}, -1)">-</button>
          <span>${item.quantity}</span>
          <button class="btn btn-secondary" onclick="updateQuantity(${index}, 1)">+</button>
        </td>
        <td>$${(item.price * item.quantity).toFixed(2)}</td>
        <td><button class="btn btn-danger" onclick="removeItem(${index})">Remove</button></td>
      `;
      cartList.appendChild(row);
  
      total += item.price * item.quantity;
    });
  
    totalPrice.textContent = total.toFixed(2);
  }
  
  // Function to update quantity of an item
  function updateQuantity(index, change) {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const item = cart[index];
  
    if (item.quantity + change > 0) {
      item.quantity += change;
    }
  
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCart();
  }
  
  // Function to remove an item from the cart
  function removeItem(index) {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.splice(index, 1);  // Remove the item at the given index
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCart();
  }
  
  // Function to clear all items from the cart
  function clearCart() {
    localStorage.removeItem('cart');
    updateCart();
  }
  
  // Event listeners for the Clear Cart and Checkout buttons
  document.getElementById('clear-cart').addEventListener('click', clearCart);
  
  // Initialize the cart on page load
  document.addEventListener('DOMContentLoaded', updateCart);

  document.getElementById("checkout-button").addEventListener("click", function () {
    window.location.href = "orderComplete.html";
});
  