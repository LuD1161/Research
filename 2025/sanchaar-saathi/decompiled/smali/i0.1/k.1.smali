.class public final synthetic Li0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Li0/U;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Li0/U;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/k;->e:Li0/U;

    iput-object p2, p0, Li0/k;->f:Landroid/view/View;

    iput-object p3, p0, Li0/k;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li0/k;->e:Li0/U;

    iget-object v1, p0, Li0/k;->f:Landroid/view/View;

    iget-object v2, p0, Li0/k;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Li0/f$g;->i(Li0/U;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
