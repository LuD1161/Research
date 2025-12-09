.class public final Lc0/j$i;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->v(Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$i;->j:Lc0/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$i;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 1

    new-instance p1, Lc0/j$i;

    iget-object v0, p0, Lc0/j$i;->j:Lc0/j;

    invoke-direct {p1, v0, p2}, Lc0/j$i;-><init>(Lc0/j;Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$i;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$i;->j:Lc0/j;

    invoke-static {p1}, Lc0/j;->f(Lc0/j;)Lc0/j$b;

    move-result-object p1

    iput v3, p0, Lc0/j$i;->i:I

    invoke-virtual {p1, p0}, Lc0/s;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lc0/j$i;->j:Lc0/j;

    invoke-static {p1}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object p1

    invoke-interface {p1}, Lc0/n;->c()LG3/d;

    move-result-object p1

    invoke-static {p1}, LG3/f;->d(LG3/d;)LG3/d;

    move-result-object p1

    new-instance v1, Lc0/j$i$a;

    iget-object v3, p0, Lc0/j$i;->j:Lc0/j;

    invoke-direct {v1, v3}, Lc0/j$i$a;-><init>(Lc0/j;)V

    iput v2, p0, Lc0/j$i;->i:I

    invoke-interface {p1, v1, p0}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$i;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$i;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$i;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
