.class public final Lc0/j$t;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->a(Lu3/p;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc0/j;

.field public final synthetic l:Lu3/p;


# direct methods
.method public constructor <init>(Lc0/j;Lu3/p;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$t;->k:Lc0/j;

    iput-object p2, p0, Lc0/j$t;->l:Lu3/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$t;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, Lc0/j$t;

    iget-object v1, p0, Lc0/j$t;->k:Lc0/j;

    iget-object v2, p0, Lc0/j$t;->l:Lu3/p;

    invoke-direct {v0, v1, v2, p2}, Lc0/j$t;-><init>(Lc0/j;Lu3/p;Ll3/e;)V

    iput-object p1, v0, Lc0/j$t;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$t;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$t;->j:Ljava/lang/Object;

    check-cast p1, LD3/I;

    const/4 v1, 0x0

    invoke-static {v1, v2, v1}, LD3/w;->b(LD3/p0;ILjava/lang/Object;)LD3/u;

    move-result-object v1

    iget-object v3, p0, Lc0/j$t;->k:Lc0/j;

    invoke-static {v3}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object v3

    invoke-virtual {v3}, Lc0/k;->a()Lc0/v;

    move-result-object v3

    new-instance v4, Lc0/p$a;

    iget-object v5, p0, Lc0/j$t;->l:Lu3/p;

    invoke-interface {p1}, LD3/I;->p()Ll3/i;

    move-result-object p1

    invoke-direct {v4, v5, v1, v3, p1}, Lc0/p$a;-><init>(Lu3/p;LD3/u;Lc0/v;Ll3/i;)V

    iget-object p1, p0, Lc0/j$t;->k:Lc0/j;

    invoke-static {p1}, Lc0/j;->i(Lc0/j;)Lc0/t;

    move-result-object p1

    invoke-virtual {p1, v4}, Lc0/t;->e(Ljava/lang/Object;)V

    iput v2, p0, Lc0/j$t;->i:I

    invoke-interface {v1, p0}, LD3/P;->F(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$t;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$t;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$t;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
