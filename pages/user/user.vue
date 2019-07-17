<template>
  <h2 class="">
    user
  </h2>
</template>

<script>
export default {
  // Watch for $route.query.page to call Component methods (asyncData, fetch, validate, layout, etc.)
  watchQuery: ['page'],
  // Key for <NuxtChild> (transitions)
  key: to => to.fullPath,
  // Called to know which transition to apply
  transition(to, from) {
    if (!from) { return 'slide-left' }
    return +to.query.page < +from.query.page ? 'slide-right' : 'slide-left'
  },
  async asyncData({ query }) {
    const page = +query.page || 1
    const data = await fetch(`https://reqres.in/api/users?page=${page}`).then(res => res.json())

    return {
      page: +data.page,
      totalPages: data.total_pages,
      users: data.data
    }
  }
}
</script>

<style>

</style>
