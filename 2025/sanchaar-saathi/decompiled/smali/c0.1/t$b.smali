.class public final Lc0/t$b;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/t;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lc0/t;


# direct methods
.method public constructor <init>(Lc0/t;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/t$b;->k:Lc0/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/t$b;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 1

    new-instance p1, Lc0/t$b;

    iget-object v0, p0, Lc0/t$b;->k:Lc0/t;

    invoke-direct {p1, v0, p2}, Lc0/t$b;-><init>(Lc0/t;Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/t$b;->j:I

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
    iget-object v1, p0, Lc0/t$b;->i:Ljava/lang/Object;

    check-cast v1, Lu3/p;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/t$b;->k:Lc0/t;

    invoke-static {p1}, Lc0/t;->c(Lc0/t;)Lc0/a;

    move-result-object p1

    invoke-virtual {p1}, Lc0/a;->b()I

    move-result p1

    if-lez p1, :cond_6

    :cond_3
    iget-object p1, p0, Lc0/t$b;->k:Lc0/t;

    invoke-static {p1}, Lc0/t;->d(Lc0/t;)LD3/I;

    move-result-object p1

    invoke-static {p1}, LD3/J;->c(LD3/I;)V

    iget-object p1, p0, Lc0/t$b;->k:Lc0/t;

    invoke-static {p1}, Lc0/t;->a(Lc0/t;)Lu3/p;

    move-result-object v1

    iget-object p1, p0, Lc0/t$b;->k:Lc0/t;

    invoke-static {p1}, Lc0/t;->b(Lc0/t;)LF3/d;

    move-result-object p1

    iput-object v1, p0, Lc0/t$b;->i:Ljava/lang/Object;

    iput v3, p0, Lc0/t$b;->j:I

    invoke-interface {p1, p0}, LF3/s;->f(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lc0/t$b;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/t$b;->j:I

    invoke-interface {v1, p1, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lc0/t$b;->k:Lc0/t;

    invoke-static {p1}, Lc0/t;->c(Lc0/t;)Lc0/a;

    move-result-object p1

    invoke-virtual {p1}, Lc0/a;->a()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/t$b;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/t$b;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/t$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
