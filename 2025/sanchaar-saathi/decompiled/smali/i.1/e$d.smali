.class public Li/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/e;->G0(Ln/b$a;)Ln/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li/e;


# direct methods
.method public constructor <init>(Li/e;)V
    .locals 0

    iput-object p1, p0, Li/e$d;->e:Li/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v1, v0, Li/e;->s:Landroid/widget/PopupWindow;

    iget-object v0, v0, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Li/e$d;->e:Li/e;

    invoke-virtual {v0}, Li/e;->V()V

    iget-object v0, p0, Li/e$d;->e:Li/e;

    invoke-virtual {v0}, Li/e;->D0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v0, v0, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v2, v0, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object v2

    invoke-virtual {v2, v1}, LS/K;->b(F)LS/K;

    move-result-object v1

    iput-object v1, v0, Li/e;->u:LS/K;

    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v0, v0, Li/e;->u:LS/K;

    new-instance v1, Li/e$d$a;

    invoke-direct {v1, p0}, Li/e$d$a;-><init>(Li/e$d;)V

    invoke-virtual {v0, v1}, LS/K;->h(LS/L;)LS/K;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v0, v0, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Li/e$d;->e:Li/e;

    iget-object v0, v0, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
