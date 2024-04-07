function add_to_cart(pid, pname, price, productImage) {
    let cart = localStorage.getItem("cart");
    if (cart == null) {
        //no cart yet  
        let products = [];
        let product = {
            productId: pid,
            productName: pname,
            productQuantity: 1,
            productPrice: price,
            productImage: productImage
        };
        products.push(product);
        localStorage.setItem("cart", JSON.stringify(products));
        showToast("Item is added to cart");
    } else {
        //cart is already present
        let pcart = JSON.parse(cart);
        let oldProduct = pcart.find((item) => item.productId == pid);
        console.log(oldProduct);
        if (oldProduct) {
            //we have to increase the quantity
            oldProduct.productQuantity = oldProduct.productQuantity + 1;
            pcart.map((item) => {
                if (item.productId === oldProduct.productId) {
                    item.productQuantity = oldProduct.productQuantity;
                }
            });
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product quantity is increased");
            showToast(oldProduct.productName + " quantity is increased , Quantity  :" + oldProduct.productQuantity);

        } else {
            //we have add the product
            let product = {
                productId: pid,
                productName: pname,
                productQuantity: 1,
                productPrice: price,
                productImage: productImage
            };
            pcart.push(product);
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product is added");
            showToast("Product is added to cart");
        }
    }
    updateCart();
}

//update cart:
function updateCart() {
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);
    if (cart == null || cart.length == 0) {
        console.log("Cart is empty !!")
        $(".cart-items").html(""); // Empty string when cart is empty
        $(".cart-body").html("<h3>Cart does not have any items  <a href='index.jsp'>Shop now </a></h3>");
        $(".checkout-btn").attr('disabled', true)
    } else {
        // Cart is not empty
        console.log(cart)
        $(".cart-items").html(`( ${cart.length} )`);
        let table = `
            <table class='table'>
            <thead class='thread-light'>
                <tr>
                <th>Item Name </th>
                <th>Price </th>
                <th>Quantity </th>
                <th>Total Price </th>
                <th>Action</th>
                </tr>
            </thead>
        `;

        let totalPrice = 0;
        cart.map((item) => {
            table += `
    <tr>
        <td>
            <img src='images/products/${item.productImage}' alt='Product Image' style='max-width: 50px; max-height: 50px; margin-right: 10px;'> 
            ${item.productName}
        </td>
        <td> ${item.productPrice} </td>
        <td> 
            <button onclick='decreaseQuantity(${item.productId})' class='btn btn-outline-secondary btn-sm'><i class='fas fa-minus'></i></button>
            ${item.productQuantity}
            <button onclick='increaseQuantity(${item.productId})' class='btn btn-outline-secondary btn-sm'><i class='fas fa-plus'></i></button>
        </td>
        <td> ${item.productQuantity * item.productPrice} </td>
        <td> <button onclick='deleteItemFromCart(${item.productId})' class='btn btn-danger btn-sm'><i class='fas fa-trash-alt'></i>&nbsp;Remove</button> </td>    
    </tr>
`;

            totalPrice += item.productPrice * item.productQuantity;
        });

        table += `
            <tr><td colspan='5' class='text-right font-weight-bold m-5'> Total Price : ${totalPrice} </td></tr>
         </table>`;
        $(".cart-body").html(table);
        $(".checkout-btn").attr('disabled', false)
        console.log("removed")
    }
}

//delete item 
function deleteItemFromCart(pid)
{
    let cart = JSON.parse(localStorage.getItem('cart'));

    let newcart = cart.filter((item) => item.productId != pid)

    localStorage.setItem('cart', JSON.stringify(newcart))

    updateCart();

    showToast("Item is removed from cart ")

}


$(document).ready(function () {

    updateCart()
})


function showToast(content) {
    $("#toast").addClass("display");
    $("#toast").html(content);
    setTimeout(() => {
        $("#toast").removeClass("display");
    }, 2000);
}


function goToCheckout() {

    window.location = "checkout.jsp"
}
function increaseQuantity(pid) {
    let cart = JSON.parse(localStorage.getItem('cart'));

    let updatedCart = cart.map((item) => {
        if (item.productId === pid) {
            showToast("Quantity increased for " + item.productName); // Show toast message
            return {...item, productQuantity: item.productQuantity + 1};
        }
        return item;
    });

    localStorage.setItem('cart', JSON.stringify(updatedCart));
    updateCart();
}

function decreaseQuantity(pid) {
    let cart = JSON.parse(localStorage.getItem('cart'));

    let updatedCart = cart.map((item) => {
        if (item.productId === pid && item.productQuantity > 1) {
            showToast("Quantity decreased for " + item.productName); // Show toast message
            return {...item, productQuantity: item.productQuantity - 1};
        }
        return item;
    });

    localStorage.setItem('cart', JSON.stringify(updatedCart));
    updateCart();
}
