<template>
  <div class="about">
    <AboutItem title> O nama</AboutItem>
  </div>
</template>

<script setup>
  import AboutItem from '@/components/AboutItem.vue';
</script>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
