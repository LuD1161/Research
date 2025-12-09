.class public Li/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li/f;


# direct methods
.method public constructor <init>(Li/f;)V
    .locals 0

    iput-object p1, p0, Li/f$a;->c:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Li/f$a;->c:Li/f;

    invoke-virtual {v0, p1}, Li/f;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
