.class public LA/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA/d$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;

.field public final b:LA/e;

.field public final c:LA/d$b;

.field public d:LA/d;

.field public e:I

.field public f:I

.field public g:Lz/i;


# direct methods
.method public constructor <init>(LA/e;LA/d$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LA/d;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, LA/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, LA/d;->f:I

    iput-object p1, p0, LA/d;->b:LA/e;

    iput-object p2, p0, LA/d;->c:LA/d$b;

    return-void
.end method


# virtual methods
.method public a(LA/d;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LA/d;->k()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, LA/d;->j(LA/d;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, LA/d;->d:LA/d;

    iget-object p4, p1, LA/d;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, LA/d;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, LA/d;->d:LA/d;

    iget-object p1, p1, LA/d;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-lez p2, :cond_3

    iput p2, p0, LA/d;->e:I

    goto :goto_0

    :cond_3
    iput v1, p0, LA/d;->e:I

    :goto_0
    iput p3, p0, LA/d;->f:I

    return v0
.end method

.method public b()I
    .locals 3

    iget-object v0, p0, LA/d;->b:LA/e;

    invoke-virtual {v0}, LA/e;->M()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, LA/d;->f:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, LA/d;->d:LA/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, LA/d;->b:LA/e;

    invoke-virtual {v0}, LA/e;->M()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, LA/d;->f:I

    return v0

    :cond_1
    iget v0, p0, LA/d;->e:I

    return v0
.end method

.method public final c()LA/d;
    .locals 2

    sget-object v0, LA/d$a;->a:[I

    iget-object v1, p0, LA/d;->c:LA/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, LA/d;->c:LA/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, LA/d;->b:LA/e;

    iget-object v0, v0, LA/e;->C:LA/d;

    return-object v0

    :pswitch_1
    iget-object v0, p0, LA/d;->b:LA/e;

    iget-object v0, v0, LA/e;->E:LA/d;

    return-object v0

    :pswitch_2
    iget-object v0, p0, LA/d;->b:LA/e;

    iget-object v0, v0, LA/e;->B:LA/d;

    return-object v0

    :pswitch_3
    iget-object v0, p0, LA/d;->b:LA/e;

    iget-object v0, v0, LA/e;->D:LA/d;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public d()LA/e;
    .locals 1

    iget-object v0, p0, LA/d;->b:LA/e;

    return-object v0
.end method

.method public e()Lz/i;
    .locals 1

    iget-object v0, p0, LA/d;->g:Lz/i;

    return-object v0
.end method

.method public f()LA/d;
    .locals 1

    iget-object v0, p0, LA/d;->d:LA/d;

    return-object v0
.end method

.method public g()LA/d$b;
    .locals 1

    iget-object v0, p0, LA/d;->c:LA/d$b;

    return-object v0
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, LA/d;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA/d;

    invoke-virtual {v2}, LA/d;->c()LA/d;

    move-result-object v2

    invoke-virtual {v2}, LA/d;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, LA/d;->d:LA/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(LA/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, LA/d;->g()LA/d$b;

    move-result-object v1

    iget-object v2, p0, LA/d;->c:LA/d$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    sget-object v1, LA/d$b;->j:LA/d$b;

    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, LA/d;->d()LA/e;

    move-result-object p1

    invoke-virtual {p1}, LA/e;->Q()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LA/d;->d()LA/e;

    move-result-object p1

    invoke-virtual {p1}, LA/e;->Q()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    sget-object v4, LA/d$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, LA/d;->c:LA/d$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    :pswitch_1
    sget-object v2, LA/d$b;->g:LA/d$b;

    if-eq v1, v2, :cond_5

    sget-object v2, LA/d$b;->i:LA/d$b;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p1}, LA/d;->d()LA/e;

    move-result-object p1

    instance-of p1, p1, LA/g;

    if-eqz p1, :cond_8

    if-nez v2, :cond_6

    sget-object p1, LA/d$b;->m:LA/d$b;

    if-ne v1, p1, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    move v2, v0

    :cond_8
    return v2

    :pswitch_2
    sget-object v2, LA/d$b;->f:LA/d$b;

    if-eq v1, v2, :cond_a

    sget-object v2, LA/d$b;->h:LA/d$b;

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    move v2, v0

    goto :goto_3

    :cond_a
    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {p1}, LA/d;->d()LA/e;

    move-result-object p1

    instance-of p1, p1, LA/g;

    if-eqz p1, :cond_d

    if-nez v2, :cond_b

    sget-object p1, LA/d$b;->l:LA/d$b;

    if-ne v1, p1, :cond_c

    :cond_b
    move v0, v3

    :cond_c
    move v2, v0

    :cond_d
    return v2

    :pswitch_3
    sget-object p1, LA/d$b;->j:LA/d$b;

    if-eq v1, p1, :cond_e

    sget-object p1, LA/d$b;->l:LA/d$b;

    if-eq v1, p1, :cond_e

    sget-object p1, LA/d$b;->m:LA/d$b;

    if-eq v1, p1, :cond_e

    move v0, v3

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, LA/d;->d:LA/d;

    if-eqz v0, :cond_0

    iget-object v0, v0, LA/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LA/d;->d:LA/d;

    const/4 v0, 0x0

    iput v0, p0, LA/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, LA/d;->f:I

    return-void
.end method

.method public l(Lz/c;)V
    .locals 2

    iget-object p1, p0, LA/d;->g:Lz/i;

    if-nez p1, :cond_0

    new-instance p1, Lz/i;

    sget-object v0, Lz/i$a;->e:Lz/i$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lz/i;-><init>(Lz/i$a;Ljava/lang/String;)V

    iput-object p1, p0, LA/d;->g:Lz/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lz/i;->d()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LA/d;->b:LA/e;

    invoke-virtual {v1}, LA/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA/d;->c:LA/d$b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
