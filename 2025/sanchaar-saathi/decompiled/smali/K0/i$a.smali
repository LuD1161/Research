.class public final LK0/i$a;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK0/i;->a(Landroid/app/Activity;)LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:LK0/i;

.field public final synthetic l:Landroid/app/Activity;


# direct methods
.method public constructor <init>(LK0/i;Landroid/app/Activity;Ll3/e;)V
    .locals 0

    iput-object p1, p0, LK0/i$a;->k:LK0/i;

    iput-object p2, p0, LK0/i$a;->l:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method

.method public static synthetic s(LF3/r;LK0/j;)V
    .locals 0

    invoke-static {p0, p1}, LK0/i$a;->w(LF3/r;LK0/j;)V

    return-void
.end method

.method public static final w(LF3/r;LK0/j;)V
    .locals 0

    invoke-interface {p0, p1}, LF3/t;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LF3/r;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, LK0/i$a;->t(LF3/r;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, LK0/i$a;

    iget-object v1, p0, LK0/i$a;->k:LK0/i;

    iget-object v2, p0, LK0/i$a;->l:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, LK0/i$a;-><init>(LK0/i;Landroid/app/Activity;Ll3/e;)V

    iput-object p1, v0, LK0/i$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LK0/i$a;->i:I

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

    iget-object p1, p0, LK0/i$a;->j:Ljava/lang/Object;

    check-cast p1, LF3/r;

    new-instance v1, LK0/h;

    invoke-direct {v1, p1}, LK0/h;-><init>(LF3/r;)V

    iget-object v3, p0, LK0/i$a;->k:LK0/i;

    invoke-static {v3}, LK0/i;->b(LK0/i;)LL0/a;

    move-result-object v3

    iget-object v4, p0, LK0/i$a;->l:Landroid/app/Activity;

    new-instance v5, Lr0/e;

    invoke-direct {v5}, Lr0/e;-><init>()V

    invoke-interface {v3, v4, v5, v1}, LL0/a;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;LR/a;)V

    new-instance v3, LK0/i$a$a;

    iget-object v4, p0, LK0/i$a;->k:LK0/i;

    invoke-direct {v3, v4, v1}, LK0/i$a$a;-><init>(LK0/i;LR/a;)V

    iput v2, p0, LK0/i$a;->i:I

    invoke-static {p1, v3, p0}, LF3/p;->a(LF3/r;Lu3/a;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final t(LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LK0/i$a;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, LK0/i$a;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, LK0/i$a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
