.class public Li0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li0/p;


# direct methods
.method public constructor <init>(Li0/p;)V
    .locals 0

    iput-object p1, p0, Li0/p$a;->e:Li0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Li0/p$a;->e:Li0/p;

    invoke-virtual {v0}, Li0/p;->D1()V

    return-void
.end method
