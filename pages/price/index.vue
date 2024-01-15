<script>
  export default {
		async asyncData({ $axios }) {
			const url = "/api/hello";
      console.log("Hello");
			const response = await $axios.$get(url).then((res) => {
        console.log("Hello2");
        return res;
      }).catch((err) => {
        console.log(err);
      });
      console.log("Hello3");
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
