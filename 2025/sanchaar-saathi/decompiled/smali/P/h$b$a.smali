.class public LP/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP/h$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LR/a;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:LP/h$b;


# direct methods
.method public constructor <init>(LP/h$b;LR/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LP/h$b$a;->g:LP/h$b;

    iput-object p2, p0, LP/h$b$a;->e:LR/a;

    iput-object p3, p0, LP/h$b$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LP/h$b$a;->e:LR/a;

    iget-object v1, p0, LP/h$b$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, LR/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
