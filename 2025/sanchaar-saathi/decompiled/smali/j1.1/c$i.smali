.class public Lj1/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:LY2/j$d;

.field public final synthetic c:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;LY2/j$d;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lj1/c$i;->c:Lj1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lj1/c$i;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lj1/c$i;->b:LY2/j$d;

    return-void
.end method

.method public synthetic constructor <init>(Lj1/c;LY2/j$d;Lj1/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj1/c$i;-><init>(Lj1/c;LY2/j$d;)V

    return-void
.end method

.method public static synthetic d(Lj1/c$i;)LY2/j$d;
    .locals 0

    iget-object p0, p0, Lj1/c$i;->b:LY2/j$d;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj1/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lj1/c$i$a;

    invoke-direct {v1, p0, p1}, Lj1/c$i$a;-><init>(Lj1/c$i;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj1/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lj1/c$i$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lj1/c$i$b;-><init>(Lj1/c$i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lj1/c$i;->a:Landroid/os/Handler;

    new-instance v1, Lj1/c$i$c;

    invoke-direct {v1, p0}, Lj1/c$i$c;-><init>(Lj1/c$i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
