.class public Lp/L$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lp/L;


# direct methods
.method public constructor <init>(Lp/L;)V
    .locals 0

    iput-object p1, p0, Lp/L$b;->e:Lp/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lp/L$b;->e:Lp/L;

    const/4 v1, 0x0

    iput-object v1, v0, Lp/L;->p:Lp/L$b;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lp/L$b;->e:Lp/L;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lp/L$b;->e:Lp/L;

    const/4 v1, 0x0

    iput-object v1, v0, Lp/L;->p:Lp/L$b;

    invoke-virtual {v0}, Lp/L;->drawableStateChanged()V

    return-void
.end method
