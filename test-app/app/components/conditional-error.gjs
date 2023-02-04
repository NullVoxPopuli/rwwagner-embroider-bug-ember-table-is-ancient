import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

let error = () => {
  throw new Error('My custom ConditionalError');
}

export default class ConditionalError extends Component {
  <template>
    <fieldset>
      <legend>{{@label}}</legend>
      <button {{on "click" this.toggle}}>toggle</button>

      {{#if this.visible}}
        {{ (error) }}
      {{/if}}
    </fieldset>
  </template>

  @tracked visible = false;

  toggle = () => this.visible = !this.visible;
}


