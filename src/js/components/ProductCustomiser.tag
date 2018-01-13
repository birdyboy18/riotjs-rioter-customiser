<product-customiser>
    <main class="mt-6 flex items-stretch">
        <div class="container mx-auto flex items-stretch">
            <sidebar options={state.options} activelayers={state.activeLayers} store={opts.store} class="w-1/4"></sidebar>
            <changing-room activelayers={state.activeLayers} store={opts.store} class="w-3/4 flex justify-center"></changing-room>
        </div>
    </main>

    <script>
        let { store } = this.opts
        this.state = store.getState;
        store.on('CHANGE', () => {
            /**
            * Calling this updates child components but they think nothing has changed
            * I'm certain I must be missing something
            * tried swapping to passing state down and then re-assigning on change causing the state tree to get re-evaluated, still not working :(
            */
            this.update({
                //state: store.getState
            });
        });
    </script>
</product-customiser>