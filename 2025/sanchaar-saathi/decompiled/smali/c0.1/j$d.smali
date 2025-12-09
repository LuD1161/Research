.class public final Lc0/j$d;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;-><init>(Lc0/w;Ljava/util/List;Lc0/d;LD3/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$d;->l:Lc0/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LG3/e;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$d;->s(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/j$d;

    iget-object v1, p0, Lc0/j$d;->l:Lc0/j;

    invoke-direct {v0, v1, p2}, Lc0/j$d;-><init>(Lc0/j;Ll3/e;)V

    iput-object p1, v0, Lc0/j$d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$d;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lc0/j$d;->i:Ljava/lang/Object;

    check-cast v1, Lc0/v;

    iget-object v3, p0, Lc0/j$d;->k:Ljava/lang/Object;

    check-cast v3, LG3/e;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lc0/j$d;->k:Ljava/lang/Object;

    check-cast v1, LG3/e;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$d;->k:Ljava/lang/Object;

    check-cast p1, LG3/e;

    iget-object v1, p0, Lc0/j$d;->l:Lc0/j;

    iput-object p1, p0, Lc0/j$d;->k:Ljava/lang/Object;

    iput v4, p0, Lc0/j$d;->j:I

    const/4 v4, 0x0

    invoke-static {v1, v4, p0}, Lc0/j;->p(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    :goto_0
    check-cast p1, Lc0/v;

    instance-of v4, p1, Lc0/e;

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Lc0/e;

    invoke-virtual {v4}, Lc0/e;->c()Ljava/lang/Object;

    move-result-object v4

    iput-object v1, p0, Lc0/j$d;->k:Ljava/lang/Object;

    iput-object p1, p0, Lc0/j$d;->i:Ljava/lang/Object;

    iput v3, p0, Lc0/j$d;->j:I

    invoke-interface {v1, v4, p0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v1

    move-object v1, p1

    :goto_1
    move-object p1, v1

    move-object v1, v3

    goto :goto_2

    :cond_6
    instance-of v3, p1, Lc0/z;

    if-nez v3, :cond_a

    instance-of v3, p1, Lc0/q;

    if-nez v3, :cond_9

    instance-of v3, p1, Lc0/l;

    if-eqz v3, :cond_7

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_7
    :goto_2
    iget-object v3, p0, Lc0/j$d;->l:Lc0/j;

    invoke-static {v3}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object v3

    invoke-virtual {v3}, Lc0/k;->b()LG3/d;

    move-result-object v3

    new-instance v4, Lc0/j$d$a;

    iget-object v5, p0, Lc0/j$d;->l:Lc0/j;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lc0/j$d$a;-><init>(Lc0/j;Ll3/e;)V

    invoke-static {v3, v4}, LG3/f;->m(LG3/d;Lu3/p;)LG3/d;

    move-result-object v3

    new-instance v4, Lc0/j$d$b;

    invoke-direct {v4, v6}, Lc0/j$d$b;-><init>(Ll3/e;)V

    invoke-static {v3, v4}, LG3/f;->n(LG3/d;Lu3/p;)LG3/d;

    move-result-object v3

    new-instance v4, Lc0/j$d$c;

    invoke-direct {v4, p1, v6}, Lc0/j$d$c;-><init>(Lc0/v;Ll3/e;)V

    invoke-static {v3, v4}, LG3/f;->e(LG3/d;Lu3/p;)LG3/d;

    move-result-object p1

    new-instance v3, Lc0/j$d$e;

    invoke-direct {v3, p1}, Lc0/j$d$e;-><init>(LG3/d;)V

    new-instance p1, Lc0/j$d$d;

    iget-object v4, p0, Lc0/j$d;->l:Lc0/j;

    invoke-direct {p1, v4, v6}, Lc0/j$d$d;-><init>(Lc0/j;Ll3/e;)V

    invoke-static {v3, p1}, LG3/f;->l(LG3/d;Lu3/q;)LG3/d;

    move-result-object p1

    iput-object v6, p0, Lc0/j$d;->k:Ljava/lang/Object;

    iput-object v6, p0, Lc0/j$d;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$d;->j:I

    invoke-static {v1, p1, p0}, LG3/f;->g(LG3/e;LG3/d;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_9
    check-cast p1, Lc0/q;

    invoke-virtual {p1}, Lc0/q;->b()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$d;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$d;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$d;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
