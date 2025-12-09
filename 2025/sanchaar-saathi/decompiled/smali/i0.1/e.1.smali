.class public final synthetic Li0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/ViewGroup;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Li0/f$a;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Li0/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/e;->e:Landroid/view/ViewGroup;

    iput-object p2, p0, Li0/e;->f:Landroid/view/View;

    iput-object p3, p0, Li0/e;->g:Li0/f$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li0/e;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Li0/e;->f:Landroid/view/View;

    iget-object v2, p0, Li0/e;->g:Li0/f$a;

    invoke-static {v0, v1, v2}, Li0/f$a$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Li0/f$a;)V

    return-void
.end method
