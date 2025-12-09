.class public Ld/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h$a;->f(ILg/a;Ljava/lang/Object;LG/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lg/a$a;

.field public final synthetic g:Ld/h$a;


# direct methods
.method public constructor <init>(Ld/h$a;ILg/a$a;)V
    .locals 0

    iput-object p1, p0, Ld/h$a$a;->g:Ld/h$a;

    iput p2, p0, Ld/h$a$a;->e:I

    iput-object p3, p0, Ld/h$a$a;->f:Lg/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/h$a$a;->g:Ld/h$a;

    iget v1, p0, Ld/h$a$a;->e:I

    iget-object v2, p0, Ld/h$a$a;->f:Lg/a$a;

    invoke-virtual {v2}, Lg/a$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/d;->c(ILjava/lang/Object;)Z

    return-void
.end method
