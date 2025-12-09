.class public Li0/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/p;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li0/Z;

.field public final synthetic f:Li0/p;


# direct methods
.method public constructor <init>(Li0/p;Li0/Z;)V
    .locals 0

    iput-object p1, p0, Li0/p$d;->f:Li0/p;

    iput-object p2, p0, Li0/p$d;->e:Li0/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Li0/p$d;->e:Li0/Z;

    invoke-virtual {v0}, Li0/Z;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/p$d;->e:Li0/Z;

    invoke-virtual {v0}, Li0/Z;->n()V

    :cond_0
    return-void
.end method
