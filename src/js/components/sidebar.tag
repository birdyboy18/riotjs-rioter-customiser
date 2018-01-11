<sidebar>
    <div class="sidebar p-6 pt-2 h-full">
        <img src="assets/images/logo.svg" class="block mx-auto mb-4 logo p-4" alt="Riot JS">
        <p class="text-white text-sm leading-normal mb-8 block px-4">This is Dave. Dave is fed up. Dave wants to riot. Help Dave pick his perfect rioting outfit by using the customiser below.</p>
        <div class="customiser px-6 pt-2 pb-2">
            <div class="customiser-group mt-6">
                <p class="bold text-grey-light text-sm uppercase tracking-wide">Head</p>
                <colour-list colours={opts.options.head} bus={opts.bus} layerName='head'></colour-list>
            </div>
            <div class="customiser-group mt-6">
                <p class="bold text-grey-light text-sm uppercase tracking-wide">Torso</p>
                <colour-list colours={opts.options.torso} bus={opts.bus} layerName='torso'></colour-list>
            </div>
            <div class="customiser-group mt-6 mb-6">
                <p class="bold text-grey-light text-sm uppercase tracking-wide">Legs</p>
                <colour-list colours={opts.options.legs} bus={opts.bus} layerName='legs'></colour-list>
            </div>
        </div>
    </div>

    <script type='es6'>
        
    </script>
</sidebar>