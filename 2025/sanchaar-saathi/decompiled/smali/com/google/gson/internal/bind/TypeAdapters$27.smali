.class Lcom/google/gson/internal/bind/TypeAdapters$27;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(LD2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$27;->f(LD2/a;)Lcom/google/gson/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(LD2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/gson/h;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$27;->g(LD2/c;Lcom/google/gson/h;)V

    return-void
.end method

.method public f(LD2/a;)Lcom/google/gson/h;
    .locals 3

    instance-of v0, p1, Lcom/google/gson/internal/bind/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/internal/bind/a;

    invoke-virtual {p1}, Lcom/google/gson/internal/bind/a;->U()Lcom/google/gson/h;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters$a;->a:[I

    invoke-virtual {p1}, LD2/a;->F()LD2/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/google/gson/k;

    invoke-direct {v0}, Lcom/google/gson/k;-><init>()V

    invoke-virtual {p1}, LD2/a;->c()V

    :goto_0
    invoke-virtual {p1}, LD2/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LD2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$27;->f(LD2/a;)Lcom/google/gson/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/k;->B(Ljava/lang/String;Lcom/google/gson/h;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LD2/a;->h()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p1}, LD2/a;->b()V

    :goto_1
    invoke-virtual {p1}, LD2/a;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$27;->f(LD2/a;)Lcom/google/gson/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->B(Lcom/google/gson/h;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, LD2/a;->g()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, LD2/a;->z()V

    sget-object p1, Lcom/google/gson/j;->e:Lcom/google/gson/j;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/google/gson/m;

    invoke-virtual {p1}, LD2/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/gson/m;

    invoke-virtual {p1}, LD2/a;->r()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, LD2/a;->C()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/gson/m;

    new-instance v1, Lcom/google/gson/internal/f;

    invoke-direct {v1, p1}, Lcom/google/gson/internal/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/m;-><init>(Ljava/lang/Number;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(LD2/c;Lcom/google/gson/h;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/google/gson/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/h;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/h;->v()Lcom/google/gson/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/m;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/m;->E()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, LD2/c;->J(Ljava/lang/Number;)LD2/c;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/m;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/m;->s()Z

    move-result p2

    invoke-virtual {p1, p2}, LD2/c;->L(Z)LD2/c;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/m;->w()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LD2/c;->K(Ljava/lang/String;)LD2/c;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/h;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LD2/c;->d()LD2/c;

    invoke-virtual {p2}, Lcom/google/gson/h;->t()Lcom/google/gson/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/e;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/h;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$27;->g(LD2/c;Lcom/google/gson/h;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, LD2/c;->g()LD2/c;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/h;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, LD2/c;->e()LD2/c;

    invoke-virtual {p2}, Lcom/google/gson/h;->u()Lcom/google/gson/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/k;->C()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, LD2/c;->l(Ljava/lang/String;)LD2/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/h;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$27;->g(LD2/c;Lcom/google/gson/h;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, LD2/c;->h()LD2/c;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, LD2/c;->r()LD2/c;

    :goto_3
    return-void
.end method
