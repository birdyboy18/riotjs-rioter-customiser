import riot from 'riot'
import sidebar from './components/sidebar.tag'
import ColourList from './components/ColourList.tag'
import Colour from './components/Colour.tag'
import ChangingRoom from './components/ChangingRoom.tag'

let bus = riot.observable()

const store = {
    bus,
    options: {
        head: [
            {
                name: 'Spotty Bandanna',
                thumbnail: '',
                layerSrc: 'bandana',
                hex: '#D92222'
            },
            {
                name: 'Lol Helmet',
                thumbnail: '',
                layerSrc: 'riot-helmet',
                hex: '#414042'
            },
            {
                name: 'Space Helmet',
                thumbnail: '',
                layerSrc: 'alien-helmet',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ],
        torso: [
            {
                name: 'Gold Cross',
                thumbnail: '',
                layerSrc: 'cross',
                hex: '#FBB040'
            },
            {
                name: 'Riot Hoodie',
                thumbnail: '',
                layerSrc: 'hoodie',
                hex: '#891515'
            },
            {
                name: 'Bikini Top',
                thumbnail: '',
                layerSrc: 'bikini',
                hex: '#18F700'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ],
        legs: [
            {
                name: 'Shorts',
                thumbnail: '',
                layerSrc: 'shorts',
                hex: '#282726'
            },
            {
                name: 'Red Trousers',
                thumbnail: '',
                layerSrc: 'trousers',
                hex: '#D92222'
            },
            {
                name: 'Harem Pants',
                thumbnail: '',
                layerSrc: 'harem-pants',
                hex: '#1C75BC'
            },
            {
                name: 'Nothing',
                thumbnail: '',
                layerSrc: 'base',
                hex: '#F7CD9C'
            }
        ]
    }
}

riot.mount('*', store);