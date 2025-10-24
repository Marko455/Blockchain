<template>
    <div class="item">
        <h1>{{ title }}</h1>
        <h1>Broj: {{ broj }}</h1>
        <button @click="povecajBroj">Povacaj broj</button>
        <button @click="smanjiBroj">Smanji broj</button>
    </div>
</template>

<script setup>
import {ref} from 'vue'
    const broj = ref(0);
    const props = defineProps({title: String})
    const emit = defineEmits(['Inkrementirano', 'Dekrementirano'])

    function povecajBroj(){
        broj.value++;
        emit('Inkrementirano')
        console.log("Inkrementirano")
    }
    function smanjiBroj(){
        broj.value--;
        emit('Dekrementirano')
        console.log("Dekrementirano")
    }
</script>