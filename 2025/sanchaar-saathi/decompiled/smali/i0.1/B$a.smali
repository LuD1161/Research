.class public Li0/B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/B;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li0/O;

.field public final synthetic d:Li0/B;


# direct methods
.method public constructor <init>(Li0/B;Li0/O;)V
    .locals 0

    iput-object p1, p0, Li0/B$a;->d:Li0/B;

    iput-object p2, p0, Li0/B$a;->c:Li0/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li0/B$a;->c:Li0/O;

    invoke-virtual {p1}, Li0/O;->k()Li0/p;

    move-result-object p1

    iget-object v0, p0, Li0/B$a;->c:Li0/O;

    invoke-virtual {v0}, Li0/O;->m()V

    iget-object p1, p1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Li0/B$a;->d:Li0/B;

    iget-object v0, v0, Li0/B;->c:Li0/I;

    invoke-static {p1, v0}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object p1

    invoke-virtual {p1}, Li0/Z;->q()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
