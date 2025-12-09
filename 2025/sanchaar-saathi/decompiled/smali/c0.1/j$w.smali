.class public final Lc0/j$w;
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
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$w;->k:Lc0/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc0/p$a;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$w;->s(Lc0/p$a;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/j$w;

    iget-object v1, p0, Lc0/j$w;->k:Lc0/j;

    invoke-direct {v0, v1, p2}, Lc0/j$w;-><init>(Lc0/j;Ll3/e;)V

    iput-object p1, v0, Lc0/j$w;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$w;->i:I

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

    iget-object p1, p0, Lc0/j$w;->j:Ljava/lang/Object;

    check-cast p1, Lc0/p$a;

    iget-object v1, p0, Lc0/j$w;->k:Lc0/j;

    iput v2, p0, Lc0/j$w;->i:I

    invoke-static {v1, p1, p0}, Lc0/j;->j(Lc0/j;Lc0/p$a;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(Lc0/p$a;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$w;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$w;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$w;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
