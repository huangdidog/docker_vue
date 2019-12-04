<template>
  <div id="app">
    112345
    <img src="./assets/logo.png">
    <ul>
      <li v-for="msg in msg">
        {{msg.name}}
      </li>
    </ul>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      msg: [],
    }
  },
  mounted() {
    fetch('/api/top').then( response => {
      return response.json();
    } ).then( data => {
      console.log(data);
      this.msg = data.data
    } );
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
