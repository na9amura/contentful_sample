<template>
  <div>
    <nuxt-link :to="{ name: 'blog-id', params: { id }}" >
      <h1>{{ title }}</h1>
      <div>{{ id }}</div>
      <div>{{ date }}</div>
    </nuxt-link>
  </div>
</template>

<script>
export default {
  props: {
    title: '',
    id: '',
    date: ''
  }
}
</script>
