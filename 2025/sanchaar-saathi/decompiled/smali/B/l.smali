.class public LB/l;
.super LB/m;
.source "SourceFile"


# instance fields
.field public k:LB/f;

.field public l:LB/g;


# direct methods
.method public constructor <init>(LA/e;)V
    .locals 2

    invoke-direct {p0, p1}, LB/m;-><init>(LA/e;)V

    new-instance p1, LB/f;

    invoke-direct {p1, p0}, LB/f;-><init>(LB/m;)V

    iput-object p1, p0, LB/l;->k:LB/f;

    const/4 v0, 0x0

    iput-object v0, p0, LB/l;->l:LB/g;

    iget-object v0, p0, LB/m;->h:LB/f;

    sget-object v1, LB/f$a;->j:LB/f$a;

    iput-object v1, v0, LB/f;->e:LB/f$a;

    iget-object v0, p0, LB/m;->i:LB/f;

    sget-object v1, LB/f$a;->k:LB/f$a;

    iput-object v1, v0, LB/f;->e:LB/f$a;

    sget-object v0, LB/f$a;->l:LB/f$a;

    iput-object v0, p1, LB/f;->e:LB/f$a;

    const/4 p1, 0x1

    iput p1, p0, LB/m;->f:I

    return-void
.end method


# virtual methods
.method public a(LB/d;)V
    .locals 6

    sget-object v0, LB/l$a;->a:[I

    iget-object v1, p0, LB/m;->j:LB/m$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v1, v0, LA/e;->C:LA/d;

    iget-object v0, v0, LA/e;->E:LA/d;

    invoke-virtual {p0, p1, v1, v0, v3}, LB/m;->n(LB/d;LA/d;LA/d;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, LB/m;->o(LB/d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, LB/m;->p(LB/d;)V

    :goto_0
    iget-object p1, p0, LB/m;->e:LB/g;

    iget-boolean v0, p1, LB/f;->c:Z

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-boolean p1, p1, LB/f;->j:Z

    if-nez p1, :cond_8

    iget-object p1, p0, LB/m;->d:LA/e$b;

    sget-object v0, LA/e$b;->g:LA/e$b;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, LB/m;->b:LA/e;

    iget v0, p1, LA/e;->m:I

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p1, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget-boolean v0, v0, LB/f;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, LA/e;->s()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    iget-object p1, p0, LB/m;->b:LA/e;

    iget-object v0, p1, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget v0, v0, LB/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, LA/e;->r()F

    move-result p1

    :goto_1
    div-float/2addr v0, p1

    :goto_2
    add-float/2addr v0, v4

    float-to-int p1, v0

    goto :goto_3

    :cond_5
    iget-object p1, p0, LB/m;->b:LA/e;

    iget-object v0, p1, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget v0, v0, LB/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, LA/e;->r()F

    move-result p1

    mul-float/2addr v0, p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, LB/m;->b:LA/e;

    iget-object v0, p1, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget v0, v0, LB/f;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, LA/e;->r()F

    move-result p1

    goto :goto_1

    :goto_3
    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-virtual {v0, p1}, LB/g;->d(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, LA/e;->E()LA/e;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, LA/e;->f:LB/l;

    iget-object p1, p1, LB/m;->e:LB/g;

    iget-boolean v0, p1, LB/f;->j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, LB/m;->b:LA/e;

    iget v0, v0, LA/e;->t:F

    iget p1, p1, LB/f;->g:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-virtual {v0, p1}, LB/g;->d(I)V

    :cond_8
    :goto_4
    iget-object p1, p0, LB/m;->h:LB/f;

    iget-boolean v0, p1, LB/f;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-boolean v1, v0, LB/f;->c:Z

    if-nez v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-boolean p1, p1, LB/f;->j:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, LB/f;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, LB/m;->e:LB/g;

    iget-boolean p1, p1, LB/f;->j:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, LB/m;->e:LB/g;

    iget-boolean p1, p1, LB/f;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, LB/m;->d:LA/e$b;

    sget-object v0, LA/e$b;->g:LA/e$b;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, LB/m;->b:LA/e;

    iget v0, p1, LA/e;->l:I

    if-nez v0, :cond_b

    invoke-virtual {p1}, LA/e;->V()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, LB/m;->h:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/f;

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/f;

    iget p1, p1, LB/f;->g:I

    iget-object v1, p0, LB/m;->h:LB/f;

    iget v2, v1, LB/f;->f:I

    add-int/2addr p1, v2

    iget v0, v0, LB/f;->g:I

    iget-object v2, p0, LB/m;->i:LB/f;

    iget v2, v2, LB/f;->f:I

    add-int/2addr v0, v2

    sub-int v2, v0, p1

    invoke-virtual {v1, p1}, LB/f;->d(I)V

    iget-object p1, p0, LB/m;->i:LB/f;

    invoke-virtual {p1, v0}, LB/f;->d(I)V

    iget-object p1, p0, LB/m;->e:LB/g;

    invoke-virtual {p1, v2}, LB/g;->d(I)V

    return-void

    :cond_b
    iget-object p1, p0, LB/m;->e:LB/g;

    iget-boolean p1, p1, LB/f;->j:Z

    if-nez p1, :cond_d

    iget-object p1, p0, LB/m;->d:LA/e$b;

    sget-object v0, LA/e$b;->g:LA/e$b;

    if-ne p1, v0, :cond_d

    iget p1, p0, LB/m;->a:I

    if-ne p1, v3, :cond_d

    iget-object p1, p0, LB/m;->h:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, LB/m;->i:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, LB/m;->h:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/f;

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/f;

    iget p1, p1, LB/f;->g:I

    iget-object v1, p0, LB/m;->h:LB/f;

    iget v1, v1, LB/f;->f:I

    add-int/2addr p1, v1

    iget v0, v0, LB/f;->g:I

    iget-object v1, p0, LB/m;->i:LB/f;

    iget v1, v1, LB/f;->f:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, LB/m;->e:LB/g;

    iget v1, p1, LB/g;->m:I

    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, LB/g;->d(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v1}, LB/g;->d(I)V

    :cond_d
    :goto_5
    iget-object p1, p0, LB/m;->e:LB/g;

    iget-boolean p1, p1, LB/f;->j:Z

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, LB/m;->h:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, LB/m;->i:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, LB/m;->h:LB/f;

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/f;

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/f;

    iget v1, p1, LB/f;->g:I

    iget-object v2, p0, LB/m;->h:LB/f;

    iget v2, v2, LB/f;->f:I

    add-int/2addr v1, v2

    iget v2, v0, LB/f;->g:I

    iget-object v3, p0, LB/m;->i:LB/f;

    iget v3, v3, LB/f;->f:I

    add-int/2addr v2, v3

    iget-object v3, p0, LB/m;->b:LA/e;

    invoke-virtual {v3}, LA/e;->I()F

    move-result v3

    if-ne p1, v0, :cond_f

    iget v1, p1, LB/f;->g:I

    iget v2, v0, LB/f;->g:I

    move v3, v4

    :cond_f
    sub-int/2addr v2, v1

    iget-object p1, p0, LB/m;->e:LB/g;

    iget p1, p1, LB/f;->g:I

    sub-int/2addr v2, p1

    iget-object p1, p0, LB/m;->h:LB/f;

    int-to-float v0, v1

    add-float/2addr v0, v4

    int-to-float v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, LB/f;->d(I)V

    iget-object p1, p0, LB/m;->i:LB/f;

    iget-object v0, p0, LB/m;->h:LB/f;

    iget v0, v0, LB/f;->g:I

    iget-object v1, p0, LB/m;->e:LB/g;

    iget v1, v1, LB/f;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, LB/f;->d(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method public d()V
    .locals 10

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-boolean v1, v0, LA/e;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LB/m;->e:LB/g;

    invoke-virtual {v0}, LA/e;->t()I

    move-result v0

    invoke-virtual {v1, v0}, LB/g;->d(I)V

    :cond_0
    iget-object v0, p0, LB/m;->e:LB/g;

    iget-boolean v0, v0, LB/f;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->K()LA/e$b;

    move-result-object v0

    iput-object v0, p0, LB/m;->d:LA/e$b;

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LB/a;

    invoke-direct {v0, p0}, LB/a;-><init>(LB/m;)V

    iput-object v0, p0, LB/l;->l:LB/g;

    :cond_1
    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->g:LA/e$b;

    if-eq v0, v1, :cond_4

    sget-object v1, LA/e$b;->h:LA/e$b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LA/e;->K()LA/e$b;

    move-result-object v1

    sget-object v2, LA/e$b;->e:LA/e$b;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, LA/e;->t()I

    move-result v1

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->C:LA/d;

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->E:LA/d;

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, LB/m;->h:LB/f;

    iget-object v3, v0, LA/e;->f:LB/l;

    iget-object v3, v3, LB/m;->h:LB/f;

    iget-object v4, p0, LB/m;->b:LA/e;

    iget-object v4, v4, LA/e;->C:LA/d;

    invoke-virtual {v4}, LA/d;->b()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v2, p0, LB/m;->i:LB/f;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v3, p0, LB/m;->b:LA/e;

    iget-object v3, v3, LA/e;->E:LA/d;

    invoke-virtual {v3}, LA/d;->b()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-virtual {v0, v1}, LB/g;->d(I)V

    return-void

    :cond_2
    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->e:LA/e$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v1, p0, LB/m;->b:LA/e;

    invoke-virtual {v1}, LA/e;->t()I

    move-result v1

    invoke-virtual {v0, v1}, LB/g;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->h:LA/e$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LA/e;->K()LA/e$b;

    move-result-object v1

    sget-object v2, LA/e$b;->e:LA/e$b;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, v0, LA/e;->f:LB/l;

    iget-object v2, v2, LB/m;->h:LB/f;

    iget-object v3, p0, LB/m;->b:LA/e;

    iget-object v3, v3, LA/e;->C:LA/d;

    invoke-virtual {v3}, LA/d;->b()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->E:LA/d;

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, LB/m;->e:LB/g;

    iget-boolean v1, v0, LB/f;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_d

    iget-object v7, p0, LB/m;->b:LA/e;

    iget-boolean v8, v7, LA/e;->a:Z

    if-eqz v8, :cond_d

    iget-object v0, v7, LA/e;->J:[LA/d;

    aget-object v1, v0, v4

    iget-object v8, v1, LA/d;->d:LA/d;

    if-eqz v8, :cond_8

    aget-object v9, v0, v6

    iget-object v9, v9, LA/d;->d:LA/d;

    if-eqz v9, :cond_8

    invoke-virtual {v7}, LA/e;->V()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->J:[LA/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, LA/d;->b()I

    move-result v1

    iput v1, v0, LB/f;->f:I

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->J:[LA/d;

    aget-object v1, v1, v6

    invoke-virtual {v1}, LA/d;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, LB/f;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->J:[LA/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    :cond_6
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->J:[LA/d;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    :cond_7
    iget-object v0, p0, LB/m;->h:LB/f;

    iput-boolean v5, v0, LB/f;->b:Z

    iget-object v0, p0, LB/m;->i:LB/f;

    iput-boolean v5, v0, LB/f;->b:Z

    :goto_1
    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->l()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {p0, v1}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    iget v2, v2, LB/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->l()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    goto/16 :goto_5

    :cond_9
    aget-object v1, v0, v6

    iget-object v4, v1, LA/d;->d:LA/d;

    if-eqz v4, :cond_b

    invoke-virtual {p0, v1}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    iget v2, v2, LB/f;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    :cond_a
    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->l()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    goto/16 :goto_5

    :cond_b
    aget-object v0, v0, v3

    iget-object v1, v0, LA/d;->d:LA/d;

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, LB/l;->k:LB/f;

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/l;->k:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->l()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    iget v2, v2, LB/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    goto/16 :goto_5

    :cond_c
    instance-of v0, v7, LA/h;

    if-nez v0, :cond_1c

    invoke-virtual {v7}, LA/e;->E()LA/e;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LB/m;->b:LA/e;

    sget-object v1, LA/d$b;->k:LA/d$b;

    invoke-virtual {v0, v1}, LA/e;->k(LA/d$b;)LA/d;

    move-result-object v0

    iget-object v0, v0, LA/d;->d:LA/d;

    if-nez v0, :cond_1c

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->P()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    iget v2, v2, LB/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->l()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LB/m;->b(LB/f;LB/f;I)V

    goto/16 :goto_5

    :cond_d
    if-nez v1, :cond_12

    iget-object v1, p0, LB/m;->d:LA/e$b;

    sget-object v7, LA/e$b;->g:LA/e$b;

    if-ne v1, v7, :cond_12

    iget-object v0, p0, LB/m;->b:LA/e;

    iget v1, v0, LA/e;->m:I

    if-eq v1, v4, :cond_10

    if-eq v1, v6, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, LA/e;->V()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, LB/m;->b:LA/e;

    iget v1, v0, LA/e;->l:I

    if-ne v1, v6, :cond_f

    goto :goto_2

    :cond_f
    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget-object v1, p0, LB/m;->e:LB/g;

    iget-object v1, v1, LB/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iput-boolean v5, v0, LB/f;->b:Z

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2

    :cond_11
    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->e:LB/g;

    iget-object v1, p0, LB/m;->e:LB/g;

    iget-object v1, v1, LB/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iput-boolean v5, v0, LB/f;->b:Z

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v0, p0}, LB/f;->b(LB/d;)V

    :cond_13
    :goto_2
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v1, v0, LA/e;->J:[LA/d;

    aget-object v7, v1, v4

    iget-object v8, v7, LA/d;->d:LA/d;

    if-eqz v8, :cond_15

    aget-object v9, v1, v6

    iget-object v9, v9, LA/d;->d:LA/d;

    if-eqz v9, :cond_15

    invoke-virtual {v0}, LA/e;->V()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->J:[LA/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, LA/d;->b()I

    move-result v1

    iput v1, v0, LB/f;->f:I

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->J:[LA/d;

    aget-object v1, v1, v6

    invoke-virtual {v1}, LA/d;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, LB/f;->f:I

    goto :goto_3

    :cond_14
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->J:[LA/d;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->J:[LA/d;

    aget-object v1, v1, v6

    invoke-virtual {p0, v1}, LB/m;->h(LA/d;)LB/f;

    move-result-object v1

    invoke-virtual {v0, p0}, LB/f;->b(LB/d;)V

    invoke-virtual {v1, p0}, LB/f;->b(LB/d;)V

    sget-object v0, LB/m$b;->h:LB/m$b;

    iput-object v0, p0, LB/m;->j:LB/m$b;

    :goto_3
    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/l;->l:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    invoke-virtual {p0, v7}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/l;->l:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    :cond_16
    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->g:LA/e$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->r()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v2, v0, LB/m;->d:LA/e$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->e:LB/j;

    iget-object v1, v1, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iput-object p0, v0, LB/f;->a:LB/d;

    goto/16 :goto_4

    :cond_17
    aget-object v4, v1, v6

    iget-object v7, v4, LA/d;->d:LA/d;

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    invoke-virtual {p0, v4}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->J:[LA/d;

    aget-object v2, v2, v6

    invoke-virtual {v2}, LA/d;->b()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->i:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    invoke-virtual {p0, v0, v1, v8, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/l;->l:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    goto/16 :goto_4

    :cond_18
    aget-object v1, v1, v3

    iget-object v3, v1, LA/d;->d:LA/d;

    if-eqz v3, :cond_19

    invoke-virtual {p0, v1}, LB/m;->h(LA/d;)LB/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, LB/l;->k:LB/f;

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/l;->k:LB/f;

    iget-object v2, p0, LB/l;->l:LB/g;

    invoke-virtual {p0, v0, v1, v8, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    goto :goto_4

    :cond_19
    instance-of v1, v0, LA/h;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->E()LA/e;

    move-result-object v0

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->h:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->b:LA/e;

    invoke-virtual {v2}, LA/e;->P()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LB/m;->b(LB/f;LB/f;I)V

    iget-object v0, p0, LB/m;->i:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/m;->e:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, LB/l;->k:LB/f;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget-object v2, p0, LB/l;->l:LB/g;

    invoke-virtual {p0, v0, v1, v5, v2}, LB/m;->c(LB/f;LB/f;ILB/g;)V

    :cond_1a
    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->g:LA/e$b;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, LB/m;->b:LA/e;

    invoke-virtual {v0}, LA/e;->r()F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v2, v0, LB/m;->d:LA/e$b;

    if-ne v2, v1, :cond_1b

    iget-object v0, v0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->e:LB/j;

    iget-object v1, v1, LB/m;->e:LB/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->e:LB/g;

    iput-object p0, v0, LB/f;->a:LB/d;

    :cond_1b
    :goto_4
    iget-object v0, p0, LB/m;->e:LB/g;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, LB/m;->e:LB/g;

    iput-boolean v5, v0, LB/f;->c:Z

    :cond_1c
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-boolean v1, v0, LB/f;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LB/m;->b:LA/e;

    iget v0, v0, LB/f;->g:I

    invoke-virtual {v1, v0}, LA/e;->C0(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LB/m;->c:LB/k;

    iget-object v0, p0, LB/m;->h:LB/f;

    invoke-virtual {v0}, LB/f;->c()V

    iget-object v0, p0, LB/m;->i:LB/f;

    invoke-virtual {v0}, LB/f;->c()V

    iget-object v0, p0, LB/l;->k:LB/f;

    invoke-virtual {v0}, LB/f;->c()V

    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-virtual {v0}, LB/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB/m;->g:Z

    return-void
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, LB/m;->d:LA/e$b;

    sget-object v1, LA/e$b;->g:LA/e$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LB/m;->b:LA/e;

    iget v0, v0, LA/e;->m:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LB/m;->g:Z

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-virtual {v1}, LB/f;->c()V

    iget-object v1, p0, LB/m;->h:LB/f;

    iput-boolean v0, v1, LB/f;->j:Z

    iget-object v1, p0, LB/m;->i:LB/f;

    invoke-virtual {v1}, LB/f;->c()V

    iget-object v1, p0, LB/m;->i:LB/f;

    iput-boolean v0, v1, LB/f;->j:Z

    iget-object v1, p0, LB/l;->k:LB/f;

    invoke-virtual {v1}, LB/f;->c()V

    iget-object v1, p0, LB/l;->k:LB/f;

    iput-boolean v0, v1, LB/f;->j:Z

    iget-object v1, p0, LB/m;->e:LB/g;

    iput-boolean v0, v1, LB/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB/m;->b:LA/e;

    invoke-virtual {v1}, LA/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
