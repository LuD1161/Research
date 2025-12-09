.class public final Ln0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ln0/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/c$a;

    invoke-direct {v0}, Ln0/c$a;-><init>()V

    sput-object v0, Ln0/c$a;->a:Ln0/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
