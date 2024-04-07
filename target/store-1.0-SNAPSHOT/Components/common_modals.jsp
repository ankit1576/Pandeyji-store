<!-- Button trigger modal -->
<style>
    .checkout-btn:hover {
        color: #fbf5f5 !important;
        background-color: #d61212 !important;
        border-color: #171616 !important;

    }
    .modal-header {
        background: #ac151b;
        color: white;
    }
    .btn:disabled {
        opacity: .65;
        text-decoration: line-through;
    }
</style>
<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">You cart                 <i class="fas fa-shopping-cart f"></i>
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="cart-body">

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">X&nbsp;Close</button>
                <button type="button" class="btn btn-success checkout-btn" onclick="goToCheckout()" > <i class="fas fa-shopping-bag"></i> &nbsp;Checkout</button>
            </div>
        </div>
    </div>
</div>

<div id="toast">This is our custom Toast text</div>
