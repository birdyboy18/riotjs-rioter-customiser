<sidebar>
    <div class="sidebar bg-blue-darker p-6 w-full h-full md:w-1/4">
        <p class="text-white text-sm leading-normal mb-8 block">Click on the below to customise the rioters clothes</p>
        <div class="customiser-group mt-6">
            <p class="bold text-grey-light text-sm uppercase tracking-wide">Head</p>
            <colour-list colours={opts.options.head} bus={opts.bus} layerName='head'></colour-list>
        </div>
        <div class="customiser-group mt-6">
            <p class="bold text-grey-light text-sm uppercase tracking-wide">Torso</p>
            <colour-list colours={opts.options.torso} bus={opts.bus} layerName='torso'></colour-list>
        </div>
        <div class="customiser-group mt-6">
            <p class="bold text-grey-light text-sm uppercase tracking-wide">Legs</p>
            <colour-list colours={opts.options.legs} bus={opts.bus} layerName='legs'></colour-list>
        </div>
    </div>

    <script type='es6'>
        
    </script>
</sidebar>