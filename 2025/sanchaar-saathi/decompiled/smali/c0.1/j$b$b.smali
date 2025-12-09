.class public final Lc0/j$b$b;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j$b;->b(Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:I

.field public final synthetic p:Lc0/j;

.field public final synthetic q:Lc0/j$b;


# direct methods
.method public constructor <init>(Lc0/j;Lc0/j$b;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$b$b;->p:Lc0/j;

    iput-object p2, p0, Lc0/j$b$b;->q:Lc0/j$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/j$b$b;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$b$b;->o:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v0, p0, Lc0/j$b$b;->n:I

    iget-object v1, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    check-cast v1, LM3/a;

    iget-object v4, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    check-cast v4, Lv3/w;

    iget-object v5, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    check-cast v5, Lv3/t;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lc0/j$b$b;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v8, p0, Lc0/j$b$b;->l:Ljava/lang/Object;

    check-cast v8, Lc0/j$b$b$a;

    iget-object v9, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    check-cast v9, Lv3/w;

    iget-object v10, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    check-cast v10, Lv3/t;

    iget-object v11, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    check-cast v11, LM3/a;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lc0/j$b$b;->l:Ljava/lang/Object;

    check-cast v1, Lv3/w;

    iget-object v8, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    check-cast v8, Lv3/w;

    iget-object v9, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    check-cast v9, Lv3/t;

    iget-object v10, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    check-cast v10, LM3/a;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-static {v2, v6, v7}, LM3/c;->b(ZILjava/lang/Object;)LM3/a;

    move-result-object v10

    new-instance v9, Lv3/t;

    invoke-direct {v9}, Lv3/t;-><init>()V

    new-instance v1, Lv3/w;

    invoke-direct {v1}, Lv3/w;-><init>()V

    iget-object p1, p0, Lc0/j$b$b;->p:Lc0/j;

    iput-object v10, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    iput-object v9, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$b$b;->l:Ljava/lang/Object;

    iput v6, p0, Lc0/j$b$b;->o:I

    invoke-static {p1, v6, p0}, Lc0/j;->o(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v8, v1

    :goto_0
    check-cast p1, Lc0/e;

    invoke-virtual {p1}, Lc0/e;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lv3/w;->e:Ljava/lang/Object;

    new-instance p1, Lc0/j$b$b$a;

    iget-object v1, p0, Lc0/j$b$b;->p:Lc0/j;

    invoke-direct {p1, v10, v9, v8, v1}, Lc0/j$b$b$a;-><init>(LM3/a;Lv3/t;Lv3/w;Lc0/j;)V

    iget-object v1, p0, Lc0/j$b$b;->q:Lc0/j$b;

    invoke-static {v1}, Lc0/j$b;->d(Lc0/j$b;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, p1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/p;

    iput-object v11, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    iput-object v10, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    iput-object v9, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    iput-object v8, p0, Lc0/j$b$b;->l:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$b$b;->m:Ljava/lang/Object;

    iput v5, p0, Lc0/j$b$b;->o:I

    invoke-interface {p1, v8, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_7
    move-object v8, v9

    move-object v5, v10

    move-object v1, v11

    goto :goto_2

    :cond_8
    move-object v5, v9

    move-object v1, v10

    :goto_2
    iget-object p1, p0, Lc0/j$b$b;->q:Lc0/j$b;

    invoke-static {p1, v7}, Lc0/j$b;->e(Lc0/j$b;Ljava/util/List;)V

    iput-object v5, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    iput-object v8, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    iput-object v1, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    iput-object v7, p0, Lc0/j$b$b;->l:Ljava/lang/Object;

    iput-object v7, p0, Lc0/j$b$b;->m:Ljava/lang/Object;

    iput v4, p0, Lc0/j$b$b;->o:I

    invoke-interface {v1, v7, p0}, LM3/a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v4, v8

    :goto_3
    :try_start_0
    iput-boolean v6, v5, Lv3/t;->e:Z

    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v7}, LM3/a;->a(Ljava/lang/Object;)V

    iget-object v1, v4, Lv3/w;->e:Ljava/lang/Object;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_a
    iget-object p1, p0, Lc0/j$b$b;->p:Lc0/j;

    invoke-static {p1}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object p1

    iput-object v1, p0, Lc0/j$b$b;->i:Ljava/lang/Object;

    iput-object v7, p0, Lc0/j$b$b;->j:Ljava/lang/Object;

    iput-object v7, p0, Lc0/j$b$b;->k:Ljava/lang/Object;

    iput v2, p0, Lc0/j$b$b;->n:I

    iput v3, p0, Lc0/j$b$b;->o:I

    invoke-interface {p1, p0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    move v0, v2

    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v2, Lc0/e;

    invoke-direct {v2, v1, v0, p1}, Lc0/e;-><init>(Ljava/lang/Object;II)V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v1, v7}, LM3/a;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, Lc0/j$b$b;

    iget-object v1, p0, Lc0/j$b$b;->p:Lc0/j;

    iget-object v2, p0, Lc0/j$b$b;->q:Lc0/j$b;

    invoke-direct {v0, v1, v2, p1}, Lc0/j$b$b;-><init>(Lc0/j;Lc0/j$b;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/j$b$b;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$b$b;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/j$b$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
