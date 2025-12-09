.class public final Lc0/j$f;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->r(ZLu3/l;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Lu3/l;


# direct methods
.method public constructor <init>(Lu3/l;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$f;->j:Lu3/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/j$f;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$f;->i:I

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

    iget-object p1, p0, Lc0/j$f;->j:Lu3/l;

    iput v2, p0, Lc0/j$f;->i:I

    invoke-interface {p1, p0}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/j$f;

    iget-object v1, p0, Lc0/j$f;->j:Lu3/l;

    invoke-direct {v0, v1, p1}, Lc0/j$f;-><init>(Lu3/l;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/j$f;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$f;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/j$f;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
