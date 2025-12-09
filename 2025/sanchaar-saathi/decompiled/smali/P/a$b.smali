.class public LP/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LP/g$c;

.field public final synthetic f:I

.field public final synthetic g:LP/a;


# direct methods
.method public constructor <init>(LP/a;LP/g$c;I)V
    .locals 0

    iput-object p1, p0, LP/a$b;->g:LP/a;

    iput-object p2, p0, LP/a$b;->e:LP/g$c;

    iput p3, p0, LP/a$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LP/a$b;->e:LP/g$c;

    iget v1, p0, LP/a$b;->f:I

    invoke-virtual {v0, v1}, LP/g$c;->a(I)V

    return-void
.end method
