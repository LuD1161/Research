.class public Li0/I$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 0

    iput-object p1, p0, Li0/I$f;->e:Li0/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li0/I$f;->e:Li0/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li0/I;->a0(Z)Z

    return-void
.end method
