.class public LE2/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LY2/j$d;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(LY2/j$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE2/d$c;->a:LY2/j$d;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LE2/d$c;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic d(LE2/d$c;)LY2/j$d;
    .locals 0

    iget-object p0, p0, LE2/d$c;->a:LY2/j$d;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LE2/d$c;->b:Landroid/os/Handler;

    new-instance v1, LE2/d$c$a;

    invoke-direct {v1, p0, p1}, LE2/d$c$a;-><init>(LE2/d$c;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LE2/d$c;->b:Landroid/os/Handler;

    new-instance v1, LE2/d$c$b;

    invoke-direct {v1, p0, p1, p2, p3}, LE2/d$c$b;-><init>(LE2/d$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LE2/d$c;->b:Landroid/os/Handler;

    new-instance v1, LE2/d$c$c;

    invoke-direct {v1, p0}, LE2/d$c$c;-><init>(LE2/d$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
