<template>
  <div>
    <h1>
      {{ entry.fields.title }}
    </h1>
    <p>{{ entry.sys.updatedAt }}</p>
    <div>
      {{ entry.fields.body }}
    </div>
  </div>
</template>

<script>
import * as contentful from 'contentful'

export default {
  props: {
    id: ''
  },
  transition: 'slide-right',
  async asyncData({ params }) {
    const client = contentful.createClient({
      space: process.env.SPACE_NAME,
      accessToken: process.env.ACCESS_TOKEN
    })
    const entry = await client.getEntry(params.id).catch(console.error)
    return { entry }
  }
}
</script>
