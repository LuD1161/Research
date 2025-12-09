.class public LD0/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/e;->w(Li0/p;Ljava/lang/Object;LO/a;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD0/l;

.field public final synthetic b:LD0/e;


# direct methods
.method public constructor <init>(LD0/e;LD0/l;)V
    .locals 0

    iput-object p1, p0, LD0/e$d;->b:LD0/e;

    iput-object p2, p0, LD0/e$d;->a:LD0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LD0/e$d;->a:LD0/l;

    invoke-virtual {v0}, LD0/l;->k()V

    return-void
.end method
