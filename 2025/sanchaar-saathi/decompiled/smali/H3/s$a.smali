.class public final LH3/s$a;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/s;-><init>(LG3/e;Ll3/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:LG3/e;


# direct methods
.method public constructor <init>(LG3/e;Ll3/e;)V
    .locals 0

    iput-object p1, p0, LH3/s$a;->k:LG3/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, LH3/s$a;->s(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, LH3/s$a;

    iget-object v1, p0, LH3/s$a;->k:LG3/e;

    invoke-direct {v0, v1, p2}, LH3/s$a;-><init>(LG3/e;Ll3/e;)V

    iput-object p1, v0, LH3/s$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LH3/s$a;->i:I

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

    iget-object p1, p0, LH3/s$a;->j:Ljava/lang/Object;

    iget-object v1, p0, LH3/s$a;->k:LG3/e;

    iput v2, p0, LH3/s$a;->i:I

    invoke-interface {v1, p1, p0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LH3/s$a;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, LH3/s$a;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, LH3/s$a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
