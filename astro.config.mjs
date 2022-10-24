import { defineConfig } from 'astro/config';

// manual add for unocss
import Unocss from '@unocss/vite';
import { extractorSvelte } from '@unocss/core'
import presetIcons from '@unocss/preset-icons'
import presetUno from '@unocss/preset-uno'

// https://astro.build/config
import svelte from "@astrojs/svelte";

// https://astro.build/config
export default defineConfig({
	integrations: [
		svelte(), Unocss({
			presets: [

			],
			extractors: [extractorSvelte],
		}),
	]
});
