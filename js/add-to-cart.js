// Function to add an item to the cart
function addToCart(itemName, itemPrice) {
    // Get the cart from localStorage or initialize an empty array if not available
    let cart = JSON.parse(localStorage.getItem('cart')) || [];

    // Check if the item is already in the cart
    const existingItem = cart.find(item => item.name === itemName);

    // If the item exists, increment the quantity, else add the item
    if (existingItem) {
        existingItem.quantity += 1; // Increment the quantity if it already exists in the cart
    } else {
        cart.push({ name: itemName, price: itemPrice, quantity: 1 }); // Add new item with quantity 1
    }

    // Save the updated cart back to localStorage
    localStorage.setItem('cart', JSON.stringify(cart));

    // Show an alert to the user
    alert(itemName + " has been added to your cart!");

    // Update the cart UI (cart count and total) after adding the item
    updateCartUI();
}

// Function to update the cart UI (cart count and total price)
function updateCartUI() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartCount = cart.reduce((total, item) => total + item.quantity, 0); // Calculate total items in cart
    const totalPrice = cart.reduce((total, item) => total + item.price * item.quantity, 0).toFixed(2); // Calculate total price

    // Update the cart count and total in the navbar
    const cartCountElement = document.getElementById('cart-count');
    const cartTotalPriceElement = document.getElementById('cart-total');

    // If there are items in the cart, display the cart count (red dot), otherwise hide it
    if (cartCount > 0) {
        cartCountElement.style.display = 'inline';  // Show the red dot
        cartCountElement.textContent = cartCount;  // Update the count
    } else {
        cartCountElement.style.display = 'none';  // Hide the red dot
    }

    // Update the total price
    cartTotalPriceElement.textContent = `$${totalPrice}`;
}

// Attach event listeners to the add-to-cart buttons dynamically based on the class
document.querySelectorAll('.add-to-cart-button').forEach(button => {
    button.addEventListener('click', function() {
        const itemName = this.getAttribute('data-item-name');
        const itemPrice = parseFloat(this.getAttribute('data-item-price'));
        addToCart(itemName, itemPrice);  // Call the function with item name and price
    });
});

// Call the updateCartUI function when the page loads to initialize the cart display
window.onload = updateCartUI;
