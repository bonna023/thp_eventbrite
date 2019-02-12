# EVENTBRITE PROJECT
> Slack : @Jérémy B.

## Corretion

```shell
$ bundle install 
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
La boîte mail se trouve par ici : http://www.yopmail.com/test_user_mailer

Commandes pour test l'envoi des mails : 
```shell
$ User.create(first_name:"John", last_name:"Doe", description:"Je suis John Doe", email:"test_user_mailer@yopmail.com")
$ Attendance.create(stripe_customer_id:"03123543", event_id:Event.all.sample.id, attendee_id:User.all.sample.id)
```

Et comme tu le verras les tests ne sont pas faits :/ 

Ciao!
