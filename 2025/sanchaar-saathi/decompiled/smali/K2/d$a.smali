.class public LK2/d$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK2/d;->a(Ljava/lang/Object;LY2/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LK2/d;


# direct methods
.method public constructor <init>(LK2/d;)V
    .locals 0

    iput-object p1, p0, LK2/d$a;->a:LK2/d;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, LK2/d$a;->a:LK2/d;

    invoke-static {v0}, LK2/d;->e(LK2/d;)LK2/a;

    move-result-object v1

    invoke-virtual {v1, p1}, LK2/a;->a(Landroid/net/Network;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, LK2/d;->g(LK2/d;Ljava/util/List;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object p1, p0, LK2/d$a;->a:LK2/d;

    invoke-static {p1}, LK2/d;->e(LK2/d;)LK2/a;

    move-result-object v0

    invoke-virtual {v0, p2}, LK2/a;->b(Landroid/net/NetworkCapabilities;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, LK2/d;->g(LK2/d;Ljava/util/List;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p1, p0, LK2/d$a;->a:LK2/d;

    invoke-static {p1}, LK2/d;->f(LK2/d;)V

    return-void
.end method
