<script>
  export default {
		async asyncData({ $axios }) {
			const url = "/api/hello";
			const response = await $axios.$get(url);
			return {
				posts: response
			};
		}
	};
</script>
<template>
  <div>
    <p>{{ posts }}</p>
  </div>
</template>
