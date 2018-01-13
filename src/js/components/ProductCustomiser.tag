<product-customiser>
    <main class="mt-6 flex items-stretch">
        <div class="container mx-auto flex items-stretch">
            <sidebar store={opts.store} class="w-1/4"></sidebar>
            <changing-room store={opts.store} class="w-3/4 flex justify-center"></changing-room>
        </div>
    </main>

    <script>
        let { store } = this.opts
        store.on('CHANGE', () => {
            /**
            * Calling this updates child components but they think nothing has changed
            * I'm certain I must be missing something
            * /
            //this.update();
        });
    </script>
</product-customiser>