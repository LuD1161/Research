.class public LE2/c$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE2/c;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LE2/c;


# direct methods
.method public constructor <init>(LE2/c;Landroid/os/Looper;Z)V
    .locals 0

    iput-object p1, p0, LE2/c$b;->b:LE2/c;

    iput-boolean p3, p0, LE2/c$b;->a:Z

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, LE2/c$b;->b:LE2/c;

    invoke-static {p1}, LE2/c;->i(LE2/c;)LY2/c$b;

    move-result-object p1

    iget-boolean v0, p0, LE2/c$b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, LY2/c$b;->a(Ljava/lang/Object;)V

    return-void
.end method
