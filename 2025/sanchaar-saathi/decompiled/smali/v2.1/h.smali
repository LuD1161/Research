.class public final Lv2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/c;


# instance fields
.field public final a:Lv2/m;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lv2/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lv2/h;->b:Landroid/os/Handler;

    iput-object p1, p0, Lv2/h;->a:Lv2/m;

    return-void
.end method


# virtual methods
.method public final a()LR1/f;
    .locals 1

    iget-object v0, p0, Lv2/h;->a:Lv2/m;

    invoke-virtual {v0}, Lv2/m;->a()LR1/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/Activity;Lv2/b;)LR1/f;
    .locals 3

    invoke-virtual {p2}, Lv2/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, LR1/i;->b(Ljava/lang/Object;)LR1/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lv2/b;->a()Landroid/app/PendingIntent;

    move-result-object p2

    const-string v1, "confirmation_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p2

    const-string v1, "window_flags"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p2, LR1/g;

    invoke-direct {p2}, LR1/g;-><init>()V

    iget-object v1, p0, Lv2/h;->b:Landroid/os/Handler;

    new-instance v2, Lv2/g;

    invoke-direct {v2, p0, v1, p2}, Lv2/g;-><init>(Lv2/h;Landroid/os/Handler;LR1/g;)V

    const-string v1, "result_receiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, LR1/g;->a()LR1/f;

    move-result-object p1

    return-object p1
.end method
