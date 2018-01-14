function storeMixin(store) {
    return {
        init: function() {
            this.store = store
        }
    }
}

export default storeMixin