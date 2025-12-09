.class public final Lc0/A$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/A$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lc0/A$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/A$a$a;

    invoke-direct {v0}, Lc0/A$a$a;-><init>()V

    sput-object v0, Lc0/A$a$a;->e:Lc0/A$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
