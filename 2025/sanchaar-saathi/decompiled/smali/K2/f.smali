.class public LK2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;


# instance fields
.field public c:LY2/j;

.field public d:LY2/c;

.field public e:LK2/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LY2/b;Landroid/content/Context;)V
    .locals 2

    new-instance v0, LY2/j;

    const-string v1, "dev.fluttercommunity.plus/connectivity"

    invoke-direct {v0, p1, v1}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LK2/f;->c:LY2/j;

    new-instance v0, LY2/c;

    const-string v1, "dev.fluttercommunity.plus/connectivity_status"

    invoke-direct {v0, p1, v1}, LY2/c;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LK2/f;->d:LY2/c;

    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    new-instance v0, LK2/a;

    invoke-direct {v0, p1}, LK2/a;-><init>(Landroid/net/ConnectivityManager;)V

    new-instance p1, LK2/e;

    invoke-direct {p1, v0}, LK2/e;-><init>(LK2/a;)V

    new-instance v1, LK2/d;

    invoke-direct {v1, p2, v0}, LK2/d;-><init>(Landroid/content/Context;LK2/a;)V

    iput-object v1, p0, LK2/f;->e:LK2/d;

    iget-object p2, p0, LK2/f;->c:LY2/j;

    invoke-virtual {p2, p1}, LY2/j;->e(LY2/j$c;)V

    iget-object p1, p0, LK2/f;->d:LY2/c;

    iget-object p2, p0, LK2/f;->e:LK2/d;

    invoke-virtual {p1, p2}, LY2/c;->d(LY2/c$d;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LK2/f;->c:LY2/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LY2/j;->e(LY2/j$c;)V

    iget-object v0, p0, LK2/f;->d:LY2/c;

    invoke-virtual {v0, v1}, LY2/c;->d(LY2/c$d;)V

    iget-object v0, p0, LK2/f;->e:LK2/d;

    invoke-virtual {v0, v1}, LK2/d;->b(Ljava/lang/Object;)V

    iput-object v1, p0, LK2/f;->c:LY2/j;

    iput-object v1, p0, LK2/f;->d:LY2/c;

    iput-object v1, p0, LK2/f;->e:LK2/d;

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 1

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object v0

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LK2/f;->a(LY2/b;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 0

    invoke-virtual {p0}, LK2/f;->b()V

    return-void
.end method
